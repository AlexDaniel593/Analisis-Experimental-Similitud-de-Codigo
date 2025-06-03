import os
import difflib
import csv
import re
from difflib import SequenceMatcher

def read_file(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            return f.read()
    except UnicodeDecodeError:
        try:
            with open(filepath, 'r', encoding='latin-1') as f:
                return f.read()
        except Exception as e:
            print(f"Error reading {filepath}: {e}")
            return ""

def get_files_from_folder(folder, extensions):
    files = []
    for file in os.listdir(folder):
        if any(file.endswith(ext) for ext in extensions):
            files.append(os.path.join(folder, file))
    return files

def count_lines(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            return len(f.readlines())
    except UnicodeDecodeError:
        with open(filepath, 'r', encoding='latin-1') as f:
            return len(f.readlines())

def get_file_size(filepath):
    return os.path.getsize(filepath)

def count_structures(content):
    """Cuenta el total de estructuras de control comunes en código Psint."""
    # Estructuras típicas en Psint: SI, SINO, SEGUN, CASO, MIENTRAS, PARA, REPETIR
    patterns = [
        r'\bSI\b',
        r'\bSINO\b',
        r'\bSEGUN\b',
        r'\bCASO\b',
        r'\bMIENTRAS\b',
        r'\bPARA\b',
        r'\bREPETIR\b'
    ]
    total = 0
    for pattern in patterns:
        total += len(re.findall(pattern, content, re.IGNORECASE))
    return total

def create_dataset():
    folder = 'pruebas'
    extensions = ['.psc']
    # Lista de archivos de solución
    solution_files = [
        os.path.join(folder, 'SolucionEXAChatgpt.txt'),
        os.path.join(folder, 'SolucionEXAClaude.txt'),
        os.path.join(folder, 'SolucionEXADeepSeek.txt'),
        os.path.join(folder, 'SolucionEXAGemini.txt'),
        os.path.join(folder, 'SolucionEXACopilot.txt')
    ]

    # Obtener todos los archivos .psc
    files = get_files_from_folder(folder, extensions)

    # Leer contenido de todos los archivos
    contents = {file: read_file(file) for file in files}

    # Leer soluciones y sus tamaños
    solutions_content = {}
    solutions_size = {}
    for sol_file in solution_files:
        solutions_content[sol_file] = read_file(sol_file)
        solutions_size[sol_file] = get_file_size(sol_file)

    # Preparar datos para CSV
    csv_data = []

    # Comparar cada archivo con los demás y con cada solución
    for i, file1 in enumerate(files):
        filename = os.path.basename(file1)

        # Calcular máxima similitud con otros archivos (para copias)
        max_similarity = 0.0
        for file2 in files[i+1:]:
            sim = difflib.SequenceMatcher(None, contents[file1], contents[file2]).ratio()
            if sim > max_similarity:
                max_similarity = sim

        # Calcular similitud con cada solución
        solution_similarities = []
        for sol_file in solution_files:
            sim = SequenceMatcher(None, solutions_content[sol_file], contents[file1]).ratio()
            solution_similarities.append(sim)

        # Obtener número de líneas y tamaño
        line_count = count_lines(file1)
        file_size = get_file_size(file1)

        # Contar estructuras de control (total)
        structures_total = count_structures(contents[file1])

        # Agregar datos al dataset
        row = [
            filename,
            max_similarity,
            line_count,
            file_size
        ]
        # Añadir similitud con cada solución
        row.extend(solution_similarities)
        # Añadir tamaño de cada solución
        row.extend([solutions_size[sol_file] for sol_file in solution_files])
        # Añadir total de estructuras de control
        row.append(structures_total)

        csv_data.append(row)

    # Encabezados del CSV
    headers = [
        'Nombre',
        'Nivel de similitud (copia)',
        'No. lineas de codigo',
        'Peso del archivo (bytes)'
    ]
    headers.extend([f'Nivel de similitud {os.path.basename(sol)}' for sol in solution_files])
    headers.extend([f'Peso del archivo {os.path.basename(sol)} (bytes)' for sol in solution_files])
    headers.append('Total estructuras de control')

    # Escribir el archivo CSV
    with open('dataset.csv', 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(headers)
        writer.writerows(csv_data)

    print("Dataset creado exitosamente como 'dataset.csv'")

if __name__ == "__main__":
    create_dataset()
