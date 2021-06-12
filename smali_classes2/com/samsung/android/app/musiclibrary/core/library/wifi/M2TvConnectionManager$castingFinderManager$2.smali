.class final Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/castingfindermanager/CastingFinderManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/castingfindermanager/CastingFinderManager;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getPackageName$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;->invoke()Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object v0

    return-object v0
.end method
