.class Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 45
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const v0, 0x7f130033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setTag(ILjava/lang/Object;)V

    .line 58
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFailed : imageUri - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", res - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
