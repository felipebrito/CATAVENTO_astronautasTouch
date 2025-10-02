#!/usr/bin/env python3
import PyPDF2
import sys

def extract_pdf_text(pdf_path, output_path):
    try:
        with open(pdf_path, 'rb') as file:
            pdf_reader = PyPDF2.PdfReader(file)
            
            text = ""
            for page_num in range(len(pdf_reader.pages)):
                page = pdf_reader.pages[page_num]
                text += f"\n--- PÁGINA {page_num + 1} ---\n"
                text += page.extract_text()
                text += "\n"
            
            with open(output_path, 'w', encoding='utf-8') as output_file:
                output_file.write(text)
            
            print(f"Texto extraído com sucesso para: {output_path}")
            print(f"Total de páginas: {len(pdf_reader.pages)}")
            
    except Exception as e:
        print(f"Erro ao extrair PDF: {e}")

if __name__ == "__main__":
    pdf_file = "20250925_ASTRONAUTAS_CONFIRMADOS_ASE_2025_V2.pdf"
    output_file = "astronautas_pdf_extracted.txt"
    
    extract_pdf_text(pdf_file, output_file)

