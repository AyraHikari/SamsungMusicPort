.class final Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SelectQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueueTabAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$Companion;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Landroid/support/v4/app/FragmentManager;

.field private final g:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tracks"

    const-string v4, "getTracks()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "radio"

    const-string v4, "getRadio()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->f:Landroid/support/v4/app/FragmentManager;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->g:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    .line 123
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    .line 124
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$tracks$2;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$tracks$2;-><init>(Landroid/content/Context;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->d:Lkotlin/Lazy;

    .line 127
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$radio$2;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter$radio$2;-><init>(Landroid/content/Context;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->e:Lkotlin/Lazy;

    return-void
.end method

.method private final a(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "SelectQueueFragment"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFragment. index - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x130937ac

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TYPE_QUEUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    check-cast v0, Landroid/support/v4/app/Fragment;

    :goto_1
    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final b(I)Ljava/lang/String;
    .locals 3

    const-string v0, "SelectQueueFragment"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragment. index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const-string p1, "TYPE_QUEUE"

    goto :goto_0

    :pswitch_0
    const-string p1, "TYPE_PLAYLIST"

    goto :goto_0

    :pswitch_1
    const-string p1, "TYPE_QUEUE"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->g:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->f:Landroid/support/v4/app/FragmentManager;

    .line 252
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 254
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->g:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    instance-of p1, p1, Lcom/samsung/android/app/music/list/local/QueueFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 213
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 214
    instance-of p2, p1, Landroid/os/Bundle;

    if-nez p2, :cond_0

    return-void

    .line 218
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "key"

    .line 219
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "QUEUE:"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->f:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 221
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, ":"

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v4}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    .line 258
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_4

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 260
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 261
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 221
    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 262
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 266
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v2

    :goto_2
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    .line 268
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 221
    check-cast v2, [Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    aget-object v2, v2, v5

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    goto/16 :goto_0

    .line 268
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string v1, "SelectQueueFragment"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad fragment at key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 8

    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    .line 199
    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_0

    return-object v0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 205
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->f:Landroid/support/v4/app/FragmentManager;

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUEUE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
