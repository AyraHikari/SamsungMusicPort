.class final Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->benchmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;->val$pool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 209
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;->val$pool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    const/4 p1, 0x0

    return p1
.end method
