.class public final Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "listType"

    const-string v4, "getListType()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "keyword"

    const-string v4, "getKeyword()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fireBase"

    const-string v4, "getFireBase()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 23
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$listType$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$listType$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->b:Lkotlin/Lazy;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$keyword$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$keyword$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->c:Lkotlin/Lazy;

    .line 26
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$fireBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$fireBase$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->d:Lkotlin/Lazy;

    return-void
.end method

.method private final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)I
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a()I

    move-result p0

    return p0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->c()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics$FireBase;->a(I)V

    return-void
.end method
