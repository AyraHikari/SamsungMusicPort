.class Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache$1;->makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    move-result-object v0

    return-object v0
.end method

.method public makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
    .locals 2

    .line 178
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;-><init>(Z)V

    return-object v0
.end method
