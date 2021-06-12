.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;
.source "SourceFile"


# static fields
.field private static c:Z


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Landroid/content/Intent;

.field private h:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private i:Landroid/app/PendingIntent;


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
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;-><init>(I)V

    const-string p1, "setRemoteAdapter"

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->d:Ljava/lang/String;

    const-string p1, "setEmptyView"

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->e:Ljava/lang/String;

    const-string p1, "setPendingIntentTemplate"

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 2

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x71ef750

    if-eq v0, v1, :cond_2

    const v1, 0xe41d16b

    if-eq v0, v1, :cond_1

    const v1, 0x2a5baae7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "setRemoteAdapter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "setPendingIntentTemplate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "setEmptyView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 70
    :pswitch_0
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->i:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto :goto_2

    .line 67
    :pswitch_1
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->h:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    goto :goto_2

    .line 64
    :pswitch_2
    iget p2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->g:Landroid/content/Intent;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->a:Ljava/util/HashSet;

    const-string v1, "setRemoteAdapter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->g:Landroid/content/Intent;

    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->a:Ljava/util/HashSet;

    const-string v1, "setPendingIntentTemplate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->i:Landroid/app/PendingIntent;

    return-void
.end method

.method public d(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->a:Ljava/util/HashSet;

    const-string v1, "setEmptyView"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    iput p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->h:I

    return-void
.end method
