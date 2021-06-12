.class public abstract Lcom/samsung/android/app/musiclibrary/BaseApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;
    }
.end annotation


# static fields
.field private static final a:Lkotlin/Lazy;

.field public static final b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    .line 23
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion$processNameLegacy$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->a:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
