.class final Lcom/samsung/android/app/music/milk/share/ShareData$deeplinkUrl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ShareData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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


# instance fields
.field final synthetic $countryCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ShareData;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareData$deeplinkUrl$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareData;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ShareData$deeplinkUrl$2;->$countryCode:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ShareData$deeplinkUrl$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareData$deeplinkUrl$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareData;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareData$deeplinkUrl$2;->$countryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/share/ShareData;->a(Lcom/samsung/android/app/music/milk/share/ShareData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
