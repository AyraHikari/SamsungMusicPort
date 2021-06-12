.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:I

.field private e:I

.field private f:Z

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "defaultPolicy"

    const-string v4, "getDefaultPolicy()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->g:Landroid/content/Context;

    .line 11
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$defaultPolicy$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$defaultPolicy$2;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final g()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final h()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->d:I

    if-gtz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->g()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->d:I

    .line 59
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->d:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDormancyPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->d:I

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    return v0
.end method

.method public final b()Z
    .locals 3

    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->h()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    .line 28
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDormancyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$Companion;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e:I

    return-void
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e:I

    .line 39
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    if-eqz v1, :cond_0

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f:Z

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e:I

    return-void
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->g:Landroid/content/Context;

    return-object v0
.end method
