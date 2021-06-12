.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$defaultPolicy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$defaultPolicy$2;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$defaultPolicy$2;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.dormancycount"

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController$defaultPolicy$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
