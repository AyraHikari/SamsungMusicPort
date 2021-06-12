.class public final Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/support/v4/app/Fragment;

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->b:Landroid/app/Activity;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->c:Landroid/support/v4/app/Fragment;

    .line 39
    iput p2, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->d:I

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "1049"

    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->c:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->J()V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a:Landroid/content/Context;

    const-string v1, "SELE"

    const-string v2, "More Option Select"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/Menu;I)V
    .locals 0

    .line 72
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->e:I

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "301"

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->b:Landroid/app/Activity;

    const-class v2, Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->c:Landroid/support/v4/app/Fragment;

    const/16 v2, 0x7be

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "1161"

    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->c:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 50
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->e:I

    const v0, 0x7f1305e6

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305e5

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 44
    iget v0, p0, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->d:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 60
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->a()V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;->b()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x7f1305e5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
