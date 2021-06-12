.class public Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->a:Landroid/net/Uri;

    return-void
.end method
