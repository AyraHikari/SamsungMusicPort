.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewUpdateHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    .line 255
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->i(I)V

    const-wide/16 v1, -0x1

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(J)V

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->safeNotifyDataSetChanged()V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 270
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "key_audio_id"

    .line 271
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(J)V

    const-string v1, "is_playing"

    .line 273
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    .line 272
    :cond_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->i(I)V

    .line 275
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(I)V

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->safeNotifyDataSetChanged()V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(I)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(I)V

    .line 265
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
