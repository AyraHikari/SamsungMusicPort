.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamsSize"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

.field private b:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    return v0

    .line 96
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 100
    :catch_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->b:I

    return v0
.end method

.method public a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;
    .locals 0

    .line 84
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->b:I

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    return-object p1
.end method
