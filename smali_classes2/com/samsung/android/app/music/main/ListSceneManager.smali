.class public final Lcom/samsung/android/app/music/main/ListSceneManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/ListSceneManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/main/ListSceneManager$Companion;

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "ListSceneManager"

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "SMUSIC-ListSceneManager"


# instance fields
.field private final b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/main/ListSceneManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/ListSceneManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/ListSceneManager;->a:Lcom/samsung/android/app/music/main/ListSceneManager$Companion;

    const-string v0, "ListSceneManager"

    .line 107
    sput-object v0, Lcom/samsung/android/app/music/main/ListSceneManager;->c:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/main/ListSceneManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/main/ListSceneManager;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/ListSceneManager;->b:Landroid/support/v4/app/FragmentActivity;

    .line 23
    iget-object p1, p0, Lcom/samsung/android/app/music/main/ListSceneManager;->b:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, p1, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    if-eqz p1, :cond_2

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/main/ListSceneManager;->a:Lcom/samsung/android/app/music/main/ListSceneManager$Companion;

    .line 163
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/main/ListSceneManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListSceneManager is initialized successfully"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_2
    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/main/ListSceneManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method private final a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 99
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-nez v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->safeNotifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private final a(Landroid/support/v4/app/Fragment;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/support/v4/app/Fragment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 160
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 93
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/main/ListSceneManager;->a(Landroid/support/v4/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/ListSceneManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/ListSceneManager;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private final c(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 86
    instance-of v0, p1, Lcom/samsung/android/app/music/main/BottomTabManagerGetter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/main/BottomTabManagerGetter;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/music/main/BottomTabManagerGetter;->getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/main/ListSceneManager$notifyMainListActivated$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/main/ListSceneManager$notifyMainListActivated$1;-><init>(Lcom/samsung/android/app/music/main/ListSceneManager;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/main/ListSceneManager;->a(Landroid/support/v4/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/main/ListSceneManager;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/ListSceneManager;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 33
    :cond_1
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/main/ListSceneManager;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/ListSceneManager;->a(Landroid/support/v4/app/FragmentActivity;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f130349

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/main/ListSceneManager;->a(Landroid/view/View;I)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/main/ListSceneManager;->b(I)V

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/ListSceneManager;->c(Landroid/support/v4/app/FragmentActivity;)V

    .line 75
    sget-object p1, Lcom/samsung/android/app/music/main/ListSceneManager;->a:Lcom/samsung/android/app/music/main/ListSceneManager$Companion;

    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/main/ListSceneManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Main list is activated "

    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/main/ListSceneManager;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f130011

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "fm"

    .line 51
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 119
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fm"

    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 127
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_5
    return-void
.end method

.method public final b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 79
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/ListSceneManager;->b(I)V

    const v1, 0x7f130349

    .line 80
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/main/ListSceneManager;->a(Landroid/view/View;I)V

    .line 81
    sget-object p1, Lcom/samsung/android/app/music/main/ListSceneManager;->a:Lcom/samsung/android/app/music/main/ListSceneManager$Companion;

    .line 146
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/main/ListSceneManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Main list is deactivated "

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
