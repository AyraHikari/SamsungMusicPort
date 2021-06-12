.class public final Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field private static final b:Z

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;

    const-string v3, "musicLibrary_release"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v2

    const-string v3, "isSecLogEnabled"

    const-string v4, "isSecLogEnabled()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->a:[Lkotlin/reflect/KProperty;

    const/4 v0, -0x1

    .line 12
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->c:I

    const-string v0, ""

    .line 13
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->d:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt$isSecLogEnabled$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()I
    .locals 1

    .line 12
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->c:I

    return v0
.end method

.method public static final a(I)V
    .locals 0

    .line 12
    sput p0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->c:I

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->d:Ljava/lang/String;

    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->b:Z

    return v0
.end method

.method public static final synthetic d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->e()Z

    move-result v0

    return v0
.end method

.method private static final e()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
