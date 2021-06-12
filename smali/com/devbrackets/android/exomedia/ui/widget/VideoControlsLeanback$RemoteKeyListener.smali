.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoteKeyListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 412
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x55

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 462
    :pswitch_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 463
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e()V

    return v0

    .line 455
    :pswitch_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-nez p1, :cond_4

    .line 456
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d()V

    return v0

    .line 481
    :pswitch_2
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->q()V

    return v0

    .line 477
    :pswitch_3
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p()V

    return v0

    .line 473
    :pswitch_4
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->j()V

    return v0

    .line 469
    :pswitch_5
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k()V

    return v0

    .line 446
    :pswitch_6
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r()V

    .line 447
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->F:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return v0

    .line 441
    :pswitch_7
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r()V

    .line 442
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->F:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->a(Landroid/view/View;)V

    return v0

    .line 436
    :pswitch_8
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r()V

    .line 437
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->F:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b(Landroid/view/View;)V

    return v0

    .line 432
    :pswitch_9
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->c()V

    return v0

    .line 428
    :pswitch_a
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r()V

    return v0

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->i()V

    return v0

    .line 418
    :cond_2
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->x:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->y:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->w:Z

    if-nez p1, :cond_3

    .line 419
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->c()V

    return v0

    .line 421
    :cond_3
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->C:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
