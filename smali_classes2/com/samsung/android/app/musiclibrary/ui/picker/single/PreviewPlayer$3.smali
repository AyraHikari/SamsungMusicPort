.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 684
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() - Unknown focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 665
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Z)V

    .line 666
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->b:Z

    goto :goto_0

    .line 671
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Z)V

    .line 673
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->b:Z

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->b:Z

    if-eqz p1, :cond_1

    .line 679
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    .line 680
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;->b:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
