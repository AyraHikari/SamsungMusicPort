.class final Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt$PROCESS_NAME$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 5

    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/BaseApplication;->b:Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/BaseApplication$Companion;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ":playerService"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Process:player"

    goto :goto_0

    :cond_0
    const-string v1, ":dataService"

    .line 26
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Process:data"

    goto :goto_0

    :cond_1
    const-string v0, "Process:ui"

    :goto_0
    return-object v0
.end method
