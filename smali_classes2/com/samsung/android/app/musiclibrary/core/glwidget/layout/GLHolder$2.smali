.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;
    .locals 3

    .line 127
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;)V

    return-object v0
.end method

.method public bridge synthetic makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;->makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;

    move-result-object v0

    return-object v0
.end method
