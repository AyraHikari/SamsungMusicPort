.class final Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;->INSTANCE:Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper$Companion$afterBulkInsert$ids$1;->invoke(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(J)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
