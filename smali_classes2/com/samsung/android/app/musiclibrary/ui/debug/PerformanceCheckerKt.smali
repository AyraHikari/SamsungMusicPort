.class public final Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field private static final b:J

.field private static final c:J

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;

    const-string v3, "musicLibrary_release"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v2

    const-string v3, "PROCESS_NAME"

    const-string v4, "getPROCESS_NAME()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;->a:[Lkotlin/reflect/KProperty;

    const-wide/32 v0, 0x5f5e100

    .line 19
    sput-wide v0, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;->b:J

    const-wide/32 v0, 0x1c9c380

    .line 20
    sput-wide v0, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;->c:J

    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "subTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
