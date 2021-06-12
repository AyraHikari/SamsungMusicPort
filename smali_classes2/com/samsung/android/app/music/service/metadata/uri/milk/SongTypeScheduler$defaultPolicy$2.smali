.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$defaultPolicy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;-><init>(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$defaultPolicy$2;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$defaultPolicy$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$defaultPolicy$2;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.KEY_AD_AUDIO_PATTERN"

    const-string v2, "7-AD-7-AD&0"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
