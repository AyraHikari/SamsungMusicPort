.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onPause()V
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

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "onPause"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->onPause()V

    return-void
.end method
