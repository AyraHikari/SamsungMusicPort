.class public final Lcom/samsung/android/app/music/milk/share/ShareDataTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/ShareDataTask$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/milk/share/ShareDataTask$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/share/ShareData;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Landroid/app/Activity;

.field private final g:I

.field private final h:Lcom/samsung/android/app/music/milk/share/ShareItem;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lock"

    const-string v4, "getLock()Ljava/util/concurrent/locks/ReentrantLock;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "condition"

    const-string v4, "getCondition()Ljava/util/concurrent/locks/Condition;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->b:Lcom/samsung/android/app/music/milk/share/ShareDataTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->f:Landroid/app/Activity;

    iput p2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->g:I

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->h:Lcom/samsung/android/app/music/milk/share/ShareItem;

    .line 18
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/milk/share/ShareDataTask$lock$2;->INSTANCE:Lcom/samsung/android/app/music/milk/share/ShareDataTask$lock$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->d:Lkotlin/Lazy;

    .line 19
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/share/ShareDataTask$condition$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask$condition$2;-><init>(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Lcom/samsung/android/app/music/milk/share/ShareData;
    .locals 1

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c:Lcom/samsung/android/app/music/milk/share/ShareData;

    if-nez p0, :cond_0

    const-string v0, "shareData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(ILcom/samsung/android/app/music/milk/share/ShareItem;)Ljava/lang/String;
    .locals 6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 88
    :pswitch_1
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string p1, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->b()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x46

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Music & More, Samsung Music"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :pswitch_2
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string p1, "%1$s - %2$s"

    const/4 v3, 0x2

    .line 81
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v5}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    .line 80
    array-length p2, v3

    invoke-static {v3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Music & More, Samsung Music"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p2, 0x0

    goto :goto_0

    .line 102
    :pswitch_1
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string p1, "%1$s - %2$s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    array-length p2, v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    :pswitch_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 p2, p2, -0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private final a()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private final b()Ljava/util/concurrent/locks/Condition;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->b()Ljava/util/concurrent/locks/Condition;

    move-result-object p0

    return-object p0
.end method

.method private final c()V
    .locals 4

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c:Lcom/samsung/android/app/music/milk/share/ShareData;

    if-nez v2, :cond_0

    const-string v3, "shareData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/share/ShareData;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c:Lcom/samsung/android/app/music/milk/share/ShareData;

    if-nez v2, :cond_1

    const-string v3, "shareData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/share/ShareData;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "android.intent.extra.TEXT"

    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->f:Landroid/app/Activity;

    const v2, 0x7f0b0384

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final d()I
    .locals 9

    .line 50
    iget v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->h:Lcom/samsung/android/app/music/milk/share/ShareItem;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(ILcom/samsung/android/app/music/milk/share/ShareItem;)Ljava/lang/String;

    move-result-object v6

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->f:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "com.samsung.radio.countrycode"

    const-string v2, "KR"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52
    iget v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->h:Lcom/samsung/android/app/music/milk/share/ShareItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/share/ShareItem;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->h:Lcom/samsung/android/app/music/milk/share/ShareItem;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareData;

    .line 54
    iget v3, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->h:Lcom/samsung/android/app/music/milk/share/ShareItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/share/ShareItem;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->h:Lcom/samsung/android/app/music/milk/share/ShareItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/share/ShareItem;->c()Ljava/lang/String;

    move-result-object v5

    const-string v1, "countryCode"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 53
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/milk/share/ShareData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c:Lcom/samsung/android/app/music/milk/share/ShareData;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c:Lcom/samsung/android/app/music/milk/share/ShareData;

    if-nez v0, :cond_0

    const-string v1, "shareData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/share/ShareData;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return v1

    .line 57
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;->a:Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c:Lcom/samsung/android/app/music/milk/share/ShareData;

    if-nez v3, :cond_4

    const-string v4, "shareData"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/share/ShareData;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)V

    check-cast v4, Lcom/samsung/android/app/music/milk/share/OnShortenResult;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->b()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 68
    :catch_0
    :try_start_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(I)V
    .locals 1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPostExecute(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c()V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "arg0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(I)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(I)V

    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
