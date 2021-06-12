.class final Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties$inSlowModelsList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties$inSlowModelsList$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties$inSlowModelsList$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 8

    .line 16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;->b()[Ljava/lang/String;

    move-result-object v0

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 16
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties$inSlowModelsList$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;->a()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v4, v2, v6, v7}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method
