.class final Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FireBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;,
        Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "favoriteMenu"

    const-string v4, "getFavoriteMenu()Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bottomBarMenu"

    const-string v4, "getBottomBarMenu()Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$favoriteMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$favoriteMenu$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->c:Lkotlin/Lazy;

    .line 43
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$bottomBarMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$bottomBarMenu$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->d:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;

    return-object v0
.end method

.method private final b()Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->a()Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b()Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$BottomBarMenu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 51
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f13002a

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const v2, 0x7f13002d

    if-eq v0, v2, :cond_5

    const v2, 0x7f1305c2

    if-eq v0, v2, :cond_4

    const v2, 0x7f1305e4

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "FireBase"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not defined menu id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v3, "more_hide_folders"

    goto :goto_0

    :pswitch_1
    const-string v3, "more_view_as_tree"

    goto :goto_0

    :pswitch_2
    const-string v3, "more_view_as_all"

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "group_by_artist"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const-string v3, "more_view_by_artist"

    goto :goto_0

    :cond_2
    const-string v3, "more_view_by_album_artist"

    goto :goto_0

    :pswitch_4
    const-string v3, "more_mp3_ringtone"

    goto :goto_0

    :pswitch_5
    const-string v3, "more_contact_us"

    goto :goto_0

    :pswitch_6
    const-string v3, "more_help"

    goto :goto_0

    :pswitch_7
    const-string v3, "more_settings"

    goto :goto_0

    :pswitch_8
    const-string v3, "more_edit"

    goto :goto_0

    :cond_3
    const-string v3, "more_add_shortcut"

    goto :goto_0

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->b(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, -0xb

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v3, "favorite_tracks_click_add"

    goto :goto_0

    :cond_5
    const-string v3, "more_sound_quality"

    goto :goto_0

    :cond_6
    const-string v3, "mymusicmode_off_button_click"

    :cond_7
    :goto_0
    if-eqz v3, :cond_8

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "general_click_event"

    const-string v2, "click_event"

    .line 86
    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305c4
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f1305dc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
