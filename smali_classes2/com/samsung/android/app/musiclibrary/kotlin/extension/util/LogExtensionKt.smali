.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;

    const-string v3, "musicLibrary_release"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v2

    const-string v3, "LOG_PRINTABLE"

    const-string v4, "getLOG_PRINTABLE()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a:[Lkotlin/reflect/KProperty;

    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt$LOG_PRINTABLE$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt$LOG_PRINTABLE$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
