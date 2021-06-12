.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelection"
.end annotation


# instance fields
.field private final animation:Z

.field private position:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;IZ)V
    .locals 2

    .line 705
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SMUSIC-GLHolder"

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetSelection construction position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    .line 711
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    if-ne v0, v1, :cond_0

    const-string v0, "SMUSIC-GLHolder"

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSelection ignored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 722
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->animationFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    if-nez v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->stopAnimation()V

    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "stop current animation"

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "SMUSIC-GLHolder"

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSelection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " animation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    if-nez v0, :cond_4

    .line 741
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$802(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)I

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setSelection(IZ)V

    return-void
.end method
