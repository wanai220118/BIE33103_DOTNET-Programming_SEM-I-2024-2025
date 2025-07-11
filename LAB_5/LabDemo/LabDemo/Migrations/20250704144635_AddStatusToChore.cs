﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LabDemo.Migrations
{
    /// <inheritdoc />
    public partial class AddStatusToChore : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Status",
                table: "Chores",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "Chores");
        }
    }
}
