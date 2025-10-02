#!/usr/bin/env python3
import re

def extract_astronaut_names(pdf_text_file):
    with open(pdf_text_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Padrão para encontrar nomes de astronautas
    # Procura por linhas que começam com nomes em maiúscula seguidos de espaços
    pattern = r'^([A-Z][a-z]+(?:\s+[A-Z][a-z]+)*)\s+([A-Z][a-z]+(?:\s+[A-Z][a-z]+)*)'
    
    names = []
    lines = content.split('\n')
    
    for line in lines:
        # Procura por padrões de nomes de astronautas
        if re.match(r'^[A-Z][a-z]+.*[A-Z][a-z]+', line.strip()):
            # Extrai apenas a primeira parte que parece ser um nome
            parts = line.strip().split()
            if len(parts) >= 2:
                # Tenta identificar o nome completo
                name_parts = []
                for part in parts:
                    if part[0].isupper() and len(part) > 2:
                        name_parts.append(part)
                    else:
                        break
                if len(name_parts) >= 2:
                    full_name = ' '.join(name_parts)
                    if full_name not in names and len(full_name) > 5:
                        names.append(full_name)
    
    return names

if __name__ == "__main__":
    names = extract_astronaut_names("astronautas_pdf_extracted.txt")
    
    print("=== NOMES DE ASTRONAUTAS DO PDF ===")
    for i, name in enumerate(names, 1):
        print(f"{i:2d}. {name}")
    
    print(f"\nTotal encontrado: {len(names)}")

