pomc_neurons = adata_norm[((adata_norm[:,'Pomc'].to_df() > 50).stack().values & (adata_norm[:,'Rbfox3'].to_df() > 15).stack().values) & (adata_norm.obs['ora_celltype'].isin(["Neurons"])), :]

npy_neurons = adata_norm[
    (
        (
            (adata_norm[:,'Agrp'].to_df() > 15).stack().values |
            (adata_norm[:,'Npy'].to_df() > 20).stack().values
        ) & (adata_norm[:,'Rbfox3'].to_df() > 5).stack().values
    ) & (adata_norm.obs['ora_celltype'].isin(["Neurons"])), :]

lxn_pos_astro = adata_norm[((adata_norm[:,'Lxn'].to_df() > 1).stack().values & (adata_norm[:,'Rbfox3'].to_df() < 10).stack().values) & (adata_norm.obs['ora_celltype'].isin(["Astrocytes"])), :]
lxn_neg_astro = adata_norm[((adata_norm[:,'Lxn'].to_df() == 0).stack().values & (adata_norm[:,'Rbfox3'].to_df() < 10).stack().values) & (adata_norm.obs['ora_celltype'].isin(["Astrocytes"])), :]