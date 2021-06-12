.class final Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->benchmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;
    .locals 1

    .line 158
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;-><init>()V

    return-object v0
.end method

.method public bridge synthetic makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1;->makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    move-result-object v0

    return-object v0
.end method
