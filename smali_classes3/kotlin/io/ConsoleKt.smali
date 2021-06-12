.class public final Lkotlin/io/ConsoleKt;
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

    const-class v2, Lkotlin/io/ConsoleKt;

    const-string v3, "kotlin-stdlib"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v2

    const-string v3, "decoder"

    const-string v4, "getDecoder()Ljava/nio/charset/CharsetDecoder;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/io/ConsoleKt;->a:[Lkotlin/reflect/KProperty;

    .line 146
    sget-object v0, Lkotlin/io/ConsoleKt$decoder$2;->INSTANCE:Lkotlin/io/ConsoleKt$decoder$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/io/ConsoleKt;->b:Lkotlin/Lazy;

    return-void
.end method
