.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity!!.applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Landroid/support/v4/app/Fragment;I)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p0
.end method

.method public static synthetic a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/support/v4/app/Fragment;I)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic b(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 49
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 21
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    instance-of v1, p0, Landroid/support/v7/app/AppCompatActivity;

    if-nez v1, :cond_1

    move-object p0, v2

    :cond_1
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Landroid/support/v7/app/ActionBar;)V

    return-object v0
.end method

.method public static final c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_title"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultUiUtils.transUnkn\u2026s!!.getString(KEY_TITLE))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "activity!!.supportFragmentManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "curFragment.childFragmentManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final f(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
