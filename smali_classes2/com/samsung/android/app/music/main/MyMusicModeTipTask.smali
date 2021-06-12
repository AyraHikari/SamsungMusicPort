.class public final Lcom/samsung/android/app/music/main/MyMusicModeTipTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/main/MainActivityTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/MyMusicModeTipTask$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask$Companion;


# instance fields
.field private final b:Landroid/text/Html$ImageGetter;

.field private c:Z

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/view/View;

.field private f:I

.field private final g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final h:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    .line 23
    new-instance p1, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$imageGetter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$imageGetter$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V

    check-cast p1, Landroid/text/Html$ImageGetter;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->b:Landroid/text/Html$ImageGetter;

    .line 112
    new-instance p1, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$settingObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$settingObserver$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)Landroid/widget/PopupWindow;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private final a()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->isFullPlayerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    const v3, 0x7f130478

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->e:Landroid/view/View;

    .line 76
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0401a4

    const/4 v5, 0x0

    .line 78
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f130193

    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$showTip$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$showTip$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f13006b

    .line 83
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->b:Landroid/text/Html$ImageGetter;

    .line 84
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/text/HtmlCompat;->a(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->e:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->f:I

    goto :goto_0

    .line 83
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void

    .line 92
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "my_music_mode_shown_tip_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_a

    .line 94
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v3, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->e:Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->f:I

    const v6, 0x800005

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/main/MainActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "my_music_mode_shown_tip_count"

    add-int/2addr v0, v1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iput-boolean v2, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->c:Z

    :cond_a
    return-void

    .line 70
    :cond_b
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->c:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)Lcom/samsung/android/app/music/main/MainActivity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->h:Lcom/samsung/android/app/music/main/MainActivity;

    return-object p0
.end method

.method private final b()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 1

    const-string p3, "activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "my_music_mode_shown_tip_count"

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x3

    if-gt p1, p3, :cond_0

    if-nez p2, :cond_0

    .line 51
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 108
    iget-boolean p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->c:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->b()V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->c(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->e(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->f(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->g(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->h(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method
