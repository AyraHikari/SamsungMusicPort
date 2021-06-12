.class public Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwardRewindSkip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->c:Z

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    .line 99
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    .line 116
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 117
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->d:I

    :goto_0
    const-wide/16 v2, 0x190

    .line 122
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "SMUSIC-MusicControl"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FF, REW Task interrupted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    instance-of p1, v0, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 132
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->c:Z

    :cond_1
    const-string p1, "SMUSIC-MusicControl"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FF, REW Task caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCancel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", v: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;->onRewind()V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;->onForward()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->c:Z

    .line 111
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->d:I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
