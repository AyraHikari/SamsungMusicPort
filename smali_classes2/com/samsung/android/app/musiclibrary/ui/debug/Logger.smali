.class public final Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tagInfo"

    const-string v4, "getTagInfo()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->b:Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->c:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->e:Z

    .line 28
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$tagInfo$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger$tagInfo$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 44
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a(ZILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(ILkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "log"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/MusicStandardKt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(ZILkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "log"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/LoggerKt;->d()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/MusicStandardKt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->e:Z

    return v0
.end method
