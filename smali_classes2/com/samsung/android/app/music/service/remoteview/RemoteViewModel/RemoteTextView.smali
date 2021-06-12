.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;
.source "SourceFile"


# static fields
.field private static c:Z


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/CharSequence;

.field private j:I

.field private k:F

.field private l:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private m:F

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;-><init>(I)V

    const-string p1, "setText"

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->d:Ljava/lang/String;

    const-string p1, "setTextViewTextSize"

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->e:Ljava/lang/String;

    const-string p1, "setTextColor"

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->f:Ljava/lang/String;

    const-string p1, "addStrokeTextEffect"

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->g:Ljava/lang/String;

    const-string p1, "addOuterShadowTextEffect"

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 7

    .line 100
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "setText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "addOuterShadowTextEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "setTextColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "addStrokeTextEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "setTextViewTextSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 117
    :pswitch_0
    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b:I

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->p:F

    iget v3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->q:F

    iget v4, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->r:F

    iget v5, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->s:I

    iget v6, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->t:F

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    goto :goto_2

    .line 113
    :pswitch_1
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->m:F

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->n:I

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->o:F

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    goto :goto_2

    .line 110
    :pswitch_2
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_2

    .line 107
    :pswitch_3
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->j:I

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->k:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_2

    .line 104
    :pswitch_4
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5ae0611e -> :sswitch_4
        -0x2bd023c9 -> :sswitch_3
        0x1c5c5ff4 -> :sswitch_2
        0x2b4646d8 -> :sswitch_1
        0x765074af -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a:Ljava/util/HashSet;

    const-string v1, "setText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public d(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a:Ljava/util/HashSet;

    const-string v1, "setTextColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->l:I

    return-void
.end method
