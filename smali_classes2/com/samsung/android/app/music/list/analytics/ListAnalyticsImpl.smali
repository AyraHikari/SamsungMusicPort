.class public final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;,
        Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
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

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fireBase"

    const-string v4, "getFireBase()Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "featureLog"

    const-string v4, "getFeatureLog()Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "listType"

    const-string v4, "getListType()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a:[Lkotlin/reflect/KProperty;

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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 17
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$fireBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$fireBase$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b:Lkotlin/Lazy;

    .line 18
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$featureLog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$featureLog$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->c:Lkotlin/Lazy;

    .line 19
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$listType$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$listType$2;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->d:Lkotlin/Lazy;

    .line 21
    new-instance p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$itemClick$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$itemClick$1;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e:Lkotlin/jvm/functions/Function3;

    .line 26
    new-instance p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$thumbnailClick$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$thumbnailClick$1;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e()I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method private final c()Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->c()Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->d()Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;

    move-result-object p0

    return-object p0
.end method

.method private final e()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public b()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->f:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
