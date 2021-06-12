.class public Lcom/samsung/android/app/music/provider/MilkContents$LatestUpdateDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatestUpdateDate"
.end annotation


# static fields
.field static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music/milk/latest_update_date"

    .line 394
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$LatestUpdateDate;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/milk/latest_update_date"

    .line 397
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
