.class public final Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "processNameLegacy"

    const-string v4, "getProcessNameLegacy()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;-><init>()V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/BaseApplication;->a()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/BaseApplication;->b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 17
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Application.getProcessName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
