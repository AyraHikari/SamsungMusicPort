.class final Lcom/google/android/gms/internal/zzanu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/android/gms/internal/zzapa;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Z

.field private synthetic e:Z

.field private synthetic f:Lcom/google/android/gms/internal/zzcv;

.field private synthetic g:Lcom/google/android/gms/internal/zzakd;

.field private synthetic h:Lcom/google/android/gms/internal/zznu;

.field private synthetic i:Lcom/google/android/gms/ads/internal/zzbl;

.field private synthetic j:Lcom/google/android/gms/ads/internal/zzv;

.field private synthetic k:Lcom/google/android/gms/internal/zzis;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanr;Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanu;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanu;->b:Lcom/google/android/gms/internal/zzapa;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanu;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzanu;->d:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzanu;->e:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzanu;->f:Lcom/google/android/gms/internal/zzcv;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzanu;->g:Lcom/google/android/gms/internal/zzakd;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzanu;->h:Lcom/google/android/gms/internal/zznu;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzanu;->i:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzanu;->j:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzanu;->k:Lcom/google/android/gms/internal/zzis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanu;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanu;->b:Lcom/google/android/gms/internal/zzapa;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzanu;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzanu;->d:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzanu;->e:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/zzanu;->f:Lcom/google/android/gms/internal/zzcv;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzanu;->g:Lcom/google/android/gms/internal/zzakd;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzanu;->h:Lcom/google/android/gms/internal/zznu;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzanu;->i:Lcom/google/android/gms/ads/internal/zzbl;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzanu;->j:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v11, p0, Lcom/google/android/gms/internal/zzanu;->k:Lcom/google/android/gms/internal/zzis;

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/zzanx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzanw;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzanu;->e:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzaht;->a(Lcom/google/android/gms/internal/zzanh;Z)Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaht;->c(Lcom/google/android/gms/internal/zzanh;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
