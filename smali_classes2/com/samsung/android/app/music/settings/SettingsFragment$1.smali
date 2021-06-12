.class Lcom/samsung/android/app/music/settings/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/samsung/android/app/music/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$1;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$1;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$1;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$1;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;)Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
