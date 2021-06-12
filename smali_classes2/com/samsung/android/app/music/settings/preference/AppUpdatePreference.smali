.class public Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AppUpdatePreference"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/support/v7/preference/PreferenceScreen;

.field private d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

.field private e:Landroid/support/v4/app/FragmentActivity;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 45
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Landroid/content/SharedPreferences;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c:Landroid/support/v7/preference/PreferenceScreen;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->e:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "app_update_ticket"

    .line 51
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->e:Landroid/support/v4/app/FragmentActivity;

    .line 54
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 56
    sget-object p1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->b:Ljava/lang/String;

    const-string v0, "No support app badge & ticket feature"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "music_player_pref"

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->f:Landroid/content/SharedPreferences;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->f:Landroid/content/SharedPreferences;

    const-string p2, "com.sec.android.app.music.KEP_APP_UPDATE_CARD_NO_MORE_SEE"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 64
    sget-object p1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->b:Ljava/lang/String;

    const-string p2, "No need to app update card no more see"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->f:Landroid/content/SharedPreferences;

    const-string p2, "com.sec.android.app.music.KEP_APP_UPDATE_TICKET"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 71
    sget-object p1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->b:Ljava/lang/String;

    const-string p2, "No need to app update ticket"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d:Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 82
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f13052a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b008b

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f130193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$1;-><init>(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f130565

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference$2;-><init>(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
