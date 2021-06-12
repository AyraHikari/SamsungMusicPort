.class public Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;
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
    name = "Vouchers"
.end annotation


# direct methods
.method public static a()Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sec.android.app.music/milk/purchase/vouchers"

    .line 161
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "milk/purchase/vouchers/uilist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/milk/purchase/vouchers/uilist"

    .line 166
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
