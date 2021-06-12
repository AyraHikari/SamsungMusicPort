.class public final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$Companion;


# instance fields
.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;

.field private n:Z

.field private o:Z

.field private final p:Lkotlin/Lazy;

.field private final q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field private final r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "recommendAddAnimator"

    const-string v4, "getRecommendAddAnimator()Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/View;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forUButton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    const p2, 0x7f1304ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "forUButton.findViewById(R.id.for_u_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->i:Landroid/widget/ImageView;

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    const p2, 0x7f1304ac

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "forUButton.findViewById(R.id.for_u_flash)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->j:Landroid/widget/ImageView;

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 85
    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 86
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 84
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f05000b

    .line 99
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v0, 0xa7

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    new-instance v2, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->k:Landroid/view/animation/Animation;

    const p1, 0x7f05000a

    .line 140
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->l:Landroid/view/animation/Animation;

    const p1, 0x7f050009

    .line 143
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 145
    new-instance p2, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->m:Landroid/view/animation/Animation;

    .line 189
    :cond_2
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$recommendAddAnimator$2;->INSTANCE:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$recommendAddAnimator$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->p:Lkotlin/Lazy;

    return-void

    .line 84
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;IIILjava/lang/Object;)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 419
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(II)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    return-object p0
.end method

.method private final a(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "most_played"

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT source_id, CASE WHEN cp_attrs = 524290 THEN 0 WHEN cp_attrs = 65537 THEN 3 WHEN cp_attrs = 524289 THEN 4 END AS audioType, 1 AS playType, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM audio_playlists_map AS AM, audio_meta AS A WHERE playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND AM.audio_id = A._id ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT 5"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recently_played"

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT source_id, CASE WHEN cp_attrs = 524290 THEN 0 WHEN cp_attrs = 65537 THEN 3 WHEN cp_attrs = 524289 THEN 4 END AS audioType, 2 AS playType, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM audio_playlists_map AS AM, audio_meta AS A WHERE playlist_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " AND AM.audio_id = A._id ORDER BY "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LIMIT 5"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 360
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT source_id, audioType, playType from ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") UNION SELECT source_id, audioType, playType from ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 362
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 364
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 498
    move-object p2, p1

    check-cast p2, Ljava/io/Closeable;

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->Companion:Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;->create(Landroid/database/Cursor;)Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 514
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p3, p1

    :try_start_1
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final a(J)V
    .locals 8

    .line 235
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    if-eqz v0, :cond_8

    const-string v1, "fragmentRef.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "fragment.activity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 240
    sget-object v2, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "context"

    .line 242
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 243
    new-instance v3, Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistBody;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistBody;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v2, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 246
    new-instance v3, Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistRequest;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->getRecommendPlaylist(Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistRequest;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 248
    invoke-virtual {v0}, Lretrofit2/Response;->d()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 249
    :cond_1
    invoke-virtual {v0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v2, "it.body()!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 252
    iput v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d:I

    const/4 v3, 0x1

    .line 253
    iput-boolean v3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->h:Z

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;->getTrackList()Ljava/util/List;

    move-result-object v5

    .line 257
    check-cast v5, Ljava/lang/Iterable;

    .line 496
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;

    .line 259
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;->getPlaylists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makeRecommendTrackValues(Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Landroid/content/ContentValues;

    move-result-object v6

    .line 258
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_4
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a(J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "MediaContents.RecommendT\u2026getContentUri(playlistId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v3, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p1

    .line 266
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/ContentValues;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/ContentValues;

    .line 263
    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_5
    return-void

    :cond_6
    return-void

    :cond_7
    return-void

    :cond_8
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;J)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(J)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->n:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->i()Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final b(J)V
    .locals 7

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->o:Z

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "foryou_remove_from_myplaylist"

    const-string v2, "foryou_remove_from_myplaylist"

    const-string v3, "1"

    .line 322
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final b(JJ)V
    .locals 9

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->n:Z

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "foryou_add_to_myplaylist"

    const-string v2, "foryou_add_to_myplaylist"

    const-string v3, "1"

    .line 290
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JJLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->o:Z

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c(Z)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    .line 383
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1

    return-void

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->i:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    .line 389
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->k:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 394
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->l:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->h:Z

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->h:Z

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/view/animation/Animation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->m:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final i()Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->p:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    return v0
.end method

.method public final a(II)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;
    .locals 10

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 424
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->e(I)J

    move-result-wide v5

    .line 425
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemViewType(I)I

    move-result v7

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_0

    .line 426
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v7, p2, :cond_0

    .line 427
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-le p1, v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p2

    invoke-direct {p1, p2, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;-><init>([JI)V

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 272
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(JJ)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(J)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "RecommendPlaylistManager"

    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addRemoveRecommendedTrack() ignore. isAddRunning="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->n:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isRemoveRunning="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->o:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/database/Cursor;IZ)V
    .locals 10

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 195
    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 197
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance p1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$create$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$create$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JLkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 198
    iput-boolean v3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e:Z

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 205
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-eqz p3, :cond_a

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getHeaderViewCount()I

    move-result v0

    add-int/2addr p2, v0

    if-ge p3, p2, :cond_3

    iget p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f:Z

    .line 209
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 472
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    .line 473
    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$create$$inlined$doOnPreDraw$1;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$create$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V

    check-cast v0, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 217
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 485
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    const-string p3, "_id"

    .line 488
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide v2, 0xfffffed7L

    const-wide/16 v4, 0x1

    cmp-long p3, v4, v0

    if-lez p3, :cond_5

    goto :goto_0

    :cond_5
    cmp-long p3, v2, v0

    if-ltz p3, :cond_6

    const-string p3, "audio_id"

    .line 489
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 222
    move-object p3, p2

    check-cast p3, Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_6
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_4

    .line 225
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    check-cast p3, Ljava/util/Map;

    .line 492
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 229
    :cond_8
    check-cast p1, Ljava/lang/Iterable;

    .line 494
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return-void

    .line 205
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicLinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e:Z

    return-void
.end method

.method public final b()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 10

    .line 402
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "fragment.activity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move v2, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    .line 408
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemViewType(I)I

    move-result v0

    .line 409
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(II)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 413
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v3, "fragment.activity!!"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 414
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a()[J

    move-result-object v5

    .line 415
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move v3, p1

    .line 410
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f:Z

    return v0
.end method

.method public final d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public final e()V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "foryou_refresh_recommended_tracks"

    const-string v2, "foryou_refresh_recommended_tracks"

    const-string v3, "1"

    .line 339
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d:I

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->q:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->s_()V

    return-void
.end method

.method public final f()V
    .locals 7

    .line 371
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$showForUButton$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$showForUButton$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final g()V
    .locals 7

    .line 377
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$hideForUButton$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$hideForUButton$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final h()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e:Z

    goto :goto_0

    :cond_0
    const-string p1, "key_start_idx"

    .line 166
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d:I

    const-string p1, "key_recommend_data_count"

    .line 167
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    const-string p1, "key_do_request_recommend"

    .line 168
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e:Z

    const-string p1, "key_show_for_u"

    .line 169
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f:Z

    const-string p1, "key_added_by_recommend_ids"

    .line 170
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 172
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    :cond_1
    :goto_0
    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->e(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    const-string p1, "key_start_idx"

    .line 181
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d:I

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_recommend_data_count"

    .line 182
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->c:I

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_do_request_recommend"

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->e:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_show_for_u"

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->f:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_added_by_recommend_ids"

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->g:Ljava/util/HashMap;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
