.class Lcom/samsung/android/app/music/settings/SettingsFragment$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/music/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;J)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    iput-wide p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
