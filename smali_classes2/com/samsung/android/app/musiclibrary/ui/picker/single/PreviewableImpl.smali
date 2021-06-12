.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PreviewableImpl"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

.field private d:J

.field private e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

.field private f:Z

.field private g:Landroid/support/v7/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->f:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->g:Landroid/support/v7/app/AlertDialog;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 54
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;)V

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;-><init>(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;)V

    .line 80
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->g:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->g:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    .line 194
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    return-object p0
.end method


# virtual methods
.method public A_()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Z)V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 4

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_audio_id"

    .line 161
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "is_playing"

    const/4 v2, 0x1

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    .line 169
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, -0x1

    .line 234
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(JZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMUSIC-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "togglePlay() : audio id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b(Z)V

    .line 93
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a()V

    goto :goto_0

    .line 96
    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(JZZ)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_audio_id"

    .line 179
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "is_playing"

    const/4 v2, 0x0

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(JZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() : fromHighlight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " audio id : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b(Z)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(JZZ)V

    return-void
.end method

.method public c(JZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() : fromHighlight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " audio id : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(JZZ)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a()V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->d()V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b(Z)V

    const-wide/16 v0, -0x1

    .line 206
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    return-void
.end method

.method public g()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v2, 0x3

    .line 212
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c()V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->c()V

    const-wide/16 v0, -0x1

    .line 215
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->d:J

    return-void
.end method

.method public i()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b()V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->f:Z

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h()V

    return-void
.end method

.method public l()Landroid/content/Intent;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->j()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
