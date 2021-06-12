.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;
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
    name = "SetAdapter"
.end annotation


# instance fields
.field private final adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field private final adapterPosition:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 2

    .line 752
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SMUSIC-GLHolder"

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAdapter construction adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adapterPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 759
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapterPosition:I

    return-void
.end method

.method private hasSameCursor(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Z
    .locals 1

    .line 788
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-eqz v0, :cond_0

    .line 789
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    .line 790
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    .line 791
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SMUSIC-GLHolder"

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAdapter adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adapterPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapterPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->hasSameCursor(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "SMUSIC-GLHolder"

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAdapter mAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    .line 774
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$902(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 775
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 777
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "SetAdapter close cursor"

    .line 779
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$902(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 783
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapterPosition:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    return-void
.end method
