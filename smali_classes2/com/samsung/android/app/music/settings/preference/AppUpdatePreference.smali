.class public final Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;
.super Landroidx/preference/Preference;
.source "AppUpdatePreference.kt"


# instance fields
.field public g0:Landroidx/fragment/app/h;

.field public h0:Landroidx/preference/PreferenceScreen;

.field public i0:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a1(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->e1(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b1(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->d1(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;Landroid/view/View;)V

    return-void
.end method

.method public static final d1(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->i0:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "preferences"

    invoke-static {p1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.music.KEP_APP_UPDATE_TICKET"

    .line 2
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.music.KEP_APP_UPDATE_CARD_NO_MORE_SEE"

    .line 3
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->h0:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_1

    const-string p1, "preferenceScreen"

    invoke-static {p1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->j1(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public static final e1(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->g0:Landroidx/fragment/app/h;

    const/4 v0, 0x0

    const-string v1, "activity"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/h;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/music/dialog/t;->b:Lcom/samsung/android/app/music/dialog/t$a;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/dialog/t$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->g0:Landroidx/fragment/app/h;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->g0:Landroidx/fragment/app/h;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->g0:Landroidx/fragment/app/h;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/network/d;->c:Lcom/samsung/android/app/musiclibrary/ui/network/d$a;

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/network/d$a;->c(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    sget-object p1, Lcom/samsung/android/app/music/update/g$b;->a:Lcom/samsung/android/app/music/update/g$b;

    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->g0:Landroidx/fragment/app/h;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_0
    const-string p0, "com.sec.android.app.music"

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/update/g$b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    const p0, 0x7f1302df

    .line 6
    invoke-static {p1, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final c1(Landroidx/fragment/app/h;Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefScreen"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->g0:Landroidx/fragment/app/h;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->h0:Landroidx/preference/PreferenceScreen;

    const-string p2, "music_player_pref"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "activity.getSharedPrefer\u2026UI, Context.MODE_PRIVATE)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->i0:Landroid/content/SharedPreferences;

    const-string p2, "preferences"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-static {p2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    const-string v2, "com.sec.android.app.music.KEP_APP_UPDATE_CARD_NO_MORE_SEE"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "preferenceScreen"

    const-string v3, "AppUpdatePreference"

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->h0:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->j1(Landroidx/preference/Preference;)Z

    .line 6
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 7
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    .line 8
    :cond_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No need to app update card no more see"

    .line 9
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->i0:Landroid/content/SharedPreferences;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    const-string p2, "com.sec.android.app.music.KEP_APP_UPDATE_TICKET"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->h0:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    :goto_1
    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->j1(Landroidx/preference/Preference;)Z

    .line 12
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 13
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    .line 14
    :cond_6
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No need to app update ticket"

    .line 15
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public h0(Landroidx/preference/l;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const v2, 0x7f1302ed

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ktx/widget/d;->c(Landroid/widget/TextView;Z)V

    .line 7
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    const v3, 0x7f0b00ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f13043b

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->s(Landroid/view/View;I)V

    .line 10
    new-instance v2, Lcom/samsung/android/app/music/settings/preference/d;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/settings/preference/d;-><init>(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    const v2, 0x7f0b00ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f130485

    if-nez v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ktx/widget/d;->c(Landroid/widget/TextView;Z)V

    .line 14
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->s(Landroid/view/View;I)V

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/settings/preference/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/preference/c;-><init>(Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
