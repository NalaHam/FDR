unique(gene_result$chromosome)

y_sex_chr_gene <- gene_result[gene_result$chromosome == 'Y', ]
  
both_sex_chr_gene <- gene_result[gene_result$chromosome == 'X, Y',]

both_sex_chr_gene <- rbind(both_sex_chr_gene, y_sex_chr_gene)



write.csv(both_sex_chr_gene, "X_chr_homolog_genes.csv")
