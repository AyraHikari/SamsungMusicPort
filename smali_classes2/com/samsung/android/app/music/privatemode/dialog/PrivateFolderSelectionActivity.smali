.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PrivateFolderSelectionActivity"


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity$1;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b01ac

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->setTitle(I)V

    const p1, 0x7f0401d7

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 52
    new-instance v1, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderFragment;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f13012a

    .line 54
    sget-object v2, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method
