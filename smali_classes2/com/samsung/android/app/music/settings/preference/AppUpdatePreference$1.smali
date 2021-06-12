.class Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;->a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;->a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->a(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.sec.android.app.music.KEP_APP_UPDATE_TICKET"

    const/4 v1, 0x0

    .line 90
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "com.sec.android.app.music.KEP_APP_UPDATE_CARD_NO_MORE_SEE"

    const/4 v1, 0x1

    .line 91
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;->a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;->a:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->b(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method
