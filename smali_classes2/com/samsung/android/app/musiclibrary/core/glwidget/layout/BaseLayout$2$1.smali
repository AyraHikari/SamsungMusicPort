.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign(II)V

    return-void
.end method
