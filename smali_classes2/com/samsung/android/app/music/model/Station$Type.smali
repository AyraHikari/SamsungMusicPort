.class public final Lcom/samsung/android/app/music/model/Station$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/Station;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/Station$Type$Def;
    }
.end annotation


# static fields
.field public static final GENRE_STATION:I = 0x1

.field public static final MY_STATION:I = 0x2

.field public static final PLAYLIST_STATION:I = 0x3

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
