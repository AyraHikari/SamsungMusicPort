.class public Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->d:Z

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->e:Z

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 190
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 192
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a()V

    .line 185
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    return-void
.end method

.method private b(I)V
    .locals 4

    const-wide/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 212
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->a()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->e()V

    goto :goto_0

    .line 218
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne v0, v1, :cond_3

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->b()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->d()V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    return-void
.end method

.method public onForward()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->g()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->c()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 125
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a()V

    .line 161
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->d:Z

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a()V

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    .line 150
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->e:Z

    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x12c

    cmp-long p1, v0, v3

    if-gez p1, :cond_1

    .line 153
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b(I)V

    .line 157
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->d:Z

    goto :goto_0

    :pswitch_1
    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_5

    .line 136
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->d:Z

    const/4 p3, 0x1

    if-nez p1, :cond_4

    .line 137
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->e:Z

    if-eqz p1, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b()V

    .line 139
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a(I)V

    .line 141
    :cond_3
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->d:Z

    :cond_4
    return p3

    :cond_5
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRewind()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->f()V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->d()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->f:Z

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a()V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->f:Z

    if-eqz v0, :cond_0

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->f:Z

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a()V

    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->e:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long p2, v2, v4

    if-gez p2, :cond_3

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b(Landroid/view/View;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->e:Z

    if-eqz p2, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->b()V

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a(Landroid/view/View;)V

    .line 92
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->f:Z

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
