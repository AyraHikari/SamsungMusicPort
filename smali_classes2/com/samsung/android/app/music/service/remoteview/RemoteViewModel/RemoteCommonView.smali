.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/IRemoteCommonViews;


# static fields
.field private static c:Z


# instance fields
.field protected final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Landroid/app/PendingIntent;

.field private s:Landroid/os/IBinder;

.field private t:Landroid/app/PendingIntent;

.field private u:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "setViewVisibility"

    .line 24
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->d:Ljava/lang/String;

    const-string v0, "setContentDescription"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->e:Ljava/lang/String;

    const-string v0, "setAlpha"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->f:Ljava/lang/String;

    const-string v0, "setEnabled"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->g:Ljava/lang/String;

    const-string v0, "setSelected"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->h:Ljava/lang/String;

    const-string v0, "setBackgroundResource"

    .line 34
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->i:Ljava/lang/String;

    const-string v0, "setOnClickPendingIntent"

    .line 36
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->j:Ljava/lang/String;

    const-string v0, "setOnLongClickPendingIntent"

    .line 38
    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->k:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const/16 v0, 0x8

    .line 45
    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->l:I

    .line 66
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;)I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    return p1
.end method

.method public a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "setContentDescription"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "setOnClickPendingIntent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "setAlpha"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "setEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "setOnLongClickPendingIntent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "setViewVisibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "setSelected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "setBackgroundResource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 152
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->s:Landroid/os/IBinder;

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->t:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->u:Landroid/app/PendingIntent;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 149
    :pswitch_1
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->r:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2

    .line 146
    :pswitch_2
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    const-string v0, "setBackgroundResource"

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->q:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 143
    :pswitch_3
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    const-string v0, "setSelected"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->p:Z

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 140
    :pswitch_4
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    const-string v0, "setEnabled"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->o:Z

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_2

    .line 137
    :pswitch_5
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    const-string v0, "setAlpha"

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->n:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 134
    :pswitch_6
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 131
    :pswitch_7
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7032aca2 -> :sswitch_7
        -0x42676ee3 -> :sswitch_6
        -0x2f8b9b67 -> :sswitch_5
        0x1074b548 -> :sswitch_4
        0x514e147f -> :sswitch_3
        0x52b5721c -> :sswitch_2
        0x5402222c -> :sswitch_1
        0x5e9e85c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setViewVisibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->l:I

    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setOnClickPendingIntent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->r:Landroid/app/PendingIntent;

    return-void
.end method

.method public a(Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setOnLongClickPendingIntent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->s:Landroid/os/IBinder;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->t:Landroid/app/PendingIntent;

    .line 109
    iput-object p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->u:Landroid/app/PendingIntent;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setContentDescription"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->m:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setEnabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->o:Z

    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setAlpha"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->n:I

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setSelected"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->p:Z

    return-void
.end method

.method public c(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a:Ljava/util/HashSet;

    const-string v1, "setBackgroundResource"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->q:I

    return-void
.end method
